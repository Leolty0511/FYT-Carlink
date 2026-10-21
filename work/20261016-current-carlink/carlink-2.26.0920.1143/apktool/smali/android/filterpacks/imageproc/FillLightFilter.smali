.class public Landroid/filterpacks/imageproc/FillLightFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mBacklight:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
    .end annotation
.end field

.field private final mFillLightShader:Ljava/lang/String;

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

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x280

    .line 5
    .line 6
    iput p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    .line 13
    .line 14
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mFillLightShader:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private updateParameters()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mBacklight:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    sub-float v0, v1, v0

    .line 6
    .line 7
    const v2, 0x3f333333    # 0.7f

    .line 8
    .line 9
    .line 10
    mul-float/2addr v0, v2

    .line 11
    const v3, 0x3e99999a    # 0.3f

    .line 12
    .line 13
    .line 14
    add-float/2addr v0, v3

    .line 15
    div-float v0, v1, v0

    .line 16
    .line 17
    mul-float/2addr v2, v0

    .line 18
    add-float/2addr v2, v3

    .line 19
    div-float/2addr v1, v2

    .line 20
    iget-object v2, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 21
    .line 22
    const-string/jumbo v3, "mult"

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 33
    .line 34
    const-string/jumbo v2, "igamma"

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

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
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 5
    .line 6
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float mult;\nuniform float igamma;\nvarying vec2 v_texcoord;\nvoid main()\n{\n  const vec3 color_weights = vec3(0.25, 0.5, 0.25);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float lightmask = dot(color.rgb, color_weights);\n  float backmask = (1.0 - lightmask);\n  vec3 ones = vec3(1.0, 1.0, 1.0);\n  vec3 diff = pow(mult * color.rgb, igamma * ones) - color.rgb;\n  diff = min(diff, 1.0);\n  vec3 new_color = min(color.rgb + diff * backmask, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v1, "tile size: "

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    .line 21
    .line 22
    const-string v2, "FillLight"

    .line 23
    .line 24
    invoke-static {p1, v1, v2}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTileSize:I

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 33
    .line 34
    iput p2, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v0, "Filter FillLight does not support frames of target "

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
    iget-object v4, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

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
    iget v5, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mTarget:I

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
    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/FillLightFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FillLightFilter;->updateParameters()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Landroid/filterpacks/imageproc/FillLightFilter;->mProgram:Landroid/filterfw/core/Program;

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
