.class public Landroid/filterpacks/imageproc/DuotoneFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private final mDuotoneShader:Ljava/lang/String;

.field private mFirstColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "first_color"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSecondColor:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "second_color"
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
    const/high16 p1, -0x10000

    .line 5
    .line 6
    iput p1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 7
    .line 8
    const/16 p1, -0x100

    .line 9
    .line 10
    iput p1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 11
    .line 12
    const/16 p1, 0x280

    .line 13
    .line 14
    iput p1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    .line 18
    .line 19
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mDuotoneShader:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private updateParameters()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 5
    .line 6
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-float v2, v2

    .line 11
    const/high16 v3, 0x437f0000    # 255.0f

    .line 12
    .line 13
    div-float/2addr v2, v3

    .line 14
    const/4 v4, 0x0

    .line 15
    aput v2, v1, v4

    .line 16
    .line 17
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 18
    .line 19
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    div-float/2addr v2, v3

    .line 25
    const/4 v5, 0x1

    .line 26
    aput v2, v1, v5

    .line 27
    .line 28
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mFirstColor:I

    .line 29
    .line 30
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    div-float/2addr v2, v3

    .line 36
    const/4 v6, 0x2

    .line 37
    aput v2, v1, v6

    .line 38
    .line 39
    new-array v0, v0, [F

    .line 40
    .line 41
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 42
    .line 43
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-float v2, v2

    .line 48
    div-float/2addr v2, v3

    .line 49
    aput v2, v0, v4

    .line 50
    .line 51
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 52
    .line 53
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    div-float/2addr v2, v3

    .line 59
    aput v2, v0, v5

    .line 60
    .line 61
    iget v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mSecondColor:I

    .line 62
    .line 63
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    int-to-float v2, v2

    .line 68
    div-float/2addr v2, v3

    .line 69
    aput v2, v0, v6

    .line 70
    .line 71
    iget-object v2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 72
    .line 73
    const-string v3, "first"

    .line 74
    .line 75
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 79
    .line 80
    const-string/jumbo v2, "second"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
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
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 first;\nuniform vec3 second;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = (color.r + color.g + color.b) * 0.3333;\n  vec3 new_color = (1.0 - energy) * first + energy * second;\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "Filter Duotone does not support frames of target "

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
    iget-object v4, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget v5, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mTarget:I

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
    move-result v2

    .line 36
    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/DuotoneFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DuotoneFilter;->updateParameters()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroid/filterpacks/imageproc/DuotoneFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v3}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 51
    .line 52
    .line 53
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
