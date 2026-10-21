.class public Landroid/filterpacks/imageproc/ImageSlicer;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mInputHeight:I

.field private mInputWidth:I

.field private mOriginalFrame:Landroid/filterfw/core/Frame;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    .line 2
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    .line 3
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    .line 4
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v1

    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    .line 5
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 6
    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    const-string v1, "image"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 3
    invoke-direct {p0, v0}, Landroid/filterpacks/imageproc/ImageSlicer;->calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 6
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 7
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 8
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    if-nez v2, :cond_1

    .line 9
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object p1

    iput-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 10
    :cond_1
    iget p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    rem-int v3, p1, v2

    .line 11
    div-int/2addr p1, v2

    .line 12
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    mul-int/2addr v3, v2

    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 13
    iget v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    mul-int/2addr p1, v5

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    int-to-float v5, v2

    div-float/2addr p1, v5

    .line 14
    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    check-cast v5, Landroid/filterfw/core/ShaderProgram;

    iget v6, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    invoke-virtual {v5, v3, p1, v6, v4}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 15
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1, v2, v0}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 16
    iget p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 17
    iget v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_2

    .line 18
    iput v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 19
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 20
    invoke-virtual {p0, v1, v2}, Landroid/filterfw/core/Filter;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 22
    invoke-virtual {p0, v1, v4}, Landroid/filterfw/core/Filter;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    .line 23
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 24
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

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
