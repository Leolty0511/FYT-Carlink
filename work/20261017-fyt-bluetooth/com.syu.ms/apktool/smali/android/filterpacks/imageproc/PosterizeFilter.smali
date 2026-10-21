.class public Landroid/filterpacks/imageproc/PosterizeFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private final mPosterizeShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/Program;

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

    const/16 p1, 0x280

    .line 2
    iput p1, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTileSize:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTarget:I

    const-string p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 pcolor;\n  pcolor.r = (color.r >= 0.5) ? 0.75 : 0.25;\n  pcolor.g = (color.g >= 0.5) ? 0.75 : 0.25;\n  pcolor.b = (color.b >= 0.5) ? 0.75 : 0.25;\n  gl_FragColor = vec4(pcolor, color.a);\n}\n"

    .line 4
    iput-object p1, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mPosterizeShader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 1
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec3 pcolor;\n  pcolor.r = (color.r >= 0.5) ? 0.75 : 0.25;\n  pcolor.g = (color.g >= 0.5) ? 0.75 : 0.25;\n  pcolor.b = (color.b >= 0.5) ? 0.75 : 0.25;\n  gl_FragColor = vec4(pcolor, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 2
    iget p1, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTileSize:I

    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 3
    iput-object v0, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 4
    iput p2, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTarget:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter Sharpen does not support frames of target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    const-string v0, "image"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 4
    iget-object v4, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mTarget:I

    if-eq v4, v5, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/PosterizeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/filterpacks/imageproc/PosterizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p1, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 7
    invoke-virtual {p0, v0, v3}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 8
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
