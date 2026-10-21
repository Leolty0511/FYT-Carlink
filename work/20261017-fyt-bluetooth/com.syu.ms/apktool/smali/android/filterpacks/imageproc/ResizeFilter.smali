.class public Landroid/filterpacks/imageproc/ResizeFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mGenerateMipMap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "generateMipMap"
    .end annotation
.end field

.field private mInputChannels:I

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    .line 3
    iput-boolean p1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method


# virtual methods
.method public createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 3
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 4
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    .line 5
    iput-object p1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ResizeFilter could not create suitable program!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Native ResizeFilter not implemented yet!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
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

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ResizeFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 3
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 4
    iget-boolean v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 6
    iget v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    div-int/2addr v4, v3

    iput v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    .line 7
    :cond_0
    iget v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 8
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 9
    iget-boolean v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/GLFrame;

    const/16 v3, 0x2801

    const/16 v4, 0x2701

    .line 11
    invoke-virtual {p1, v3, v4}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/filterfw/core/GLFrame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 13
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 14
    iget-object v1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v1, p1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 15
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p1, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 17
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 18
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

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
