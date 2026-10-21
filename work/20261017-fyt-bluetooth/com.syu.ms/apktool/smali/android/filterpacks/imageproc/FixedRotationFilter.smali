.class public Landroid/filterpacks/imageproc/FixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 11

    const-string v0, "image"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 2
    iget v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 5
    iget-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v3, :cond_1

    .line 6
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 7
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    .line 9
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    .line 10
    new-instance v5, Landroid/filterfw/geometry/Point;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 11
    new-instance v7, Landroid/filterfw/geometry/Point;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 12
    new-instance v9, Landroid/filterfw/geometry/Point;

    invoke-direct {v9, v6, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 13
    new-instance v6, Landroid/filterfw/geometry/Point;

    invoke-direct {v6, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 14
    iget v8, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    int-to-float v8, v8

    const/high16 v10, 0x42b40000    # 90.0f

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    rem-int/lit8 v8, v8, 0x4

    const/4 v10, 0x1

    if-eq v8, v10, :cond_4

    const/4 v10, 0x2

    if-eq v8, v10, :cond_3

    const/4 v10, 0x3

    if-eq v8, v10, :cond_2

    .line 15
    new-instance v2, Landroid/filterfw/geometry/Quad;

    invoke-direct {v2, v5, v7, v9, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_1

    .line 16
    :cond_2
    new-instance v8, Landroid/filterfw/geometry/Quad;

    invoke-direct {v8, v7, v6, v5, v9}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 17
    invoke-virtual {v3, v2, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_0

    .line 18
    :cond_3
    new-instance v2, Landroid/filterfw/geometry/Quad;

    invoke-direct {v2, v6, v9, v7, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_1

    .line 19
    :cond_4
    new-instance v8, Landroid/filterfw/geometry/Quad;

    invoke-direct {v8, v9, v5, v6, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 20
    invoke-virtual {v3, v2, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    :goto_0
    move-object v2, v8

    .line 21
    :goto_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    .line 22
    iget-object v3, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v3, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 23
    iget-object v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v1, p1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 25
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
